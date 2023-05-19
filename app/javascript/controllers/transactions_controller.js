import { Controller } from "@hotwired/stimulus"
import consumer from "channels/consumer"

// Connects to data-controller="transactions"
export default class extends Controller {
  static targets = [ "transactions" , 'table', 'balance']
  
  chatChannel = null;

  connect() {
    this.chatChannel = this.createChanel(this)
  }

  disconnect() {
    this.chatChannel.unsubscribe();
  }

  createChanel(instance){
    return consumer.subscriptions.create({channel: "TransactionChannel", room: 'transaction_channel'}, {
      connected() {
        this.perform("retrieve_transactions");
      },
      received(data) {
        instance.tableTarget.innerHTML = data
      }
    });
  }
}
