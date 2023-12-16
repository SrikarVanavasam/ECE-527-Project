#include "my_prj.h"
#include "data.h"
#include "stdio.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xmy_prj_accelerator.h"
#include "xparameters.h" /* SDK generated parameters */
#include "xplatform_info.h"
#include "xsdps.h" /* SD device driver */
#include "xtmrctr.h"
#include "ff.h" /* FAT File System */

// Timer variables to measure time
u32 timerCount_Stop;
u32 timerCount_Start;

// AXI device object for AXI Timer
XTmrCtr timer;
#define TMRCTR_DEVICE_ID XPAR_AXI_TIMER_0_DEVICE_ID

// Max number of test cases in LeNet is 10K
// You can reduce this for testing/debugging
// Final report must use all 10000 test cases
#define NUM_TESTS 10000

// SD card and file reading objects
static FIL fil; /* File object */
static FATFS fatfs;
static char *SD_File;
u32 Platform;

double output[2] = {0, 0};

int main()
{

	int status;
	// Initialize timer object
	status = XTmrCtr_Initialize(&timer, TMRCTR_DEVICE_ID);
	if (status != XST_SUCCESS) {
	xil_printf("Timer init fail\n\r");
	return XST_FAILURE;
	}

	status = XTmrCtr_SelfTest(&timer, 0);
	if (status != XST_SUCCESS) {
	xil_printf("Timer self test fail\n\r");
	return XST_FAILURE;
	}

	// Start
	printf("Start\n");
	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);
	int num_correct = 0;
	for (int i = 0; i < NUM_SAMPLES; i++)
	{
		my_prj(inputs[i], output);
		int pred = 0;
//		printf("output: %f\n", output[0]);
		if (output[0] >= 0)
			pred = 1;
		else
			pred = 0;
		if (pred == labels[i]) {
			num_correct++;
		}
	}
	timerCount_Stop = XTmrCtr_GetValue(&timer, 0);
	// Display time
	xil_printf("Time: %d\n\r", (timerCount_Stop - timerCount_Start));
	printf("num_correct: %d\n", num_correct);
}
