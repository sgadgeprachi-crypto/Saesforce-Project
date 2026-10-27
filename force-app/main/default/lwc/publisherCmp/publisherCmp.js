import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import SAMPLE_CHANNEL from '@salesforce/messageChannel/SampleMessageChannel__c';

export default class PublisherCmp extends LightningElement {

   message = '';

    @wire(MessageContext)
    messageContext;

    handleChange(event) {
        this.message = event.target.value;
    }

    handleSend() {
        const payload = { messageText: this.message };
        publish(this.messageContext, SAMPLE_CHANNEL, payload);
    }


}