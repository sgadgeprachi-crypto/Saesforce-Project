import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class CustomerInfoForm extends LightningElement {
  // Fires automatically when the form saves successfully
    handleSuccess(event) {
        // The event payload contains the updated/new record information
        const recordId = event.detail.id;

        const toastEvent = new ShowToastEvent({
            title: 'Success!',
            message: `Record created successfully with ID: ${recordId}`,
            variant: 'success'
        });
        this.dispatchEvent(toastEvent);
    }

    // Optional: Fires if there's a server-side or validation error
    handleError(event) {
        const toastEvent = new ShowToastEvent({
            title: 'Error creating record',
            message: event.detail.message,
            variant: 'error'
        });
        this.dispatchEvent(toastEvent);
    }


}