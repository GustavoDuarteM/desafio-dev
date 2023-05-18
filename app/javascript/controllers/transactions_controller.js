import { Controller } from "@hotwired/stimulus"
import consumer from "channels/consumer"

// Connects to data-controller="transactions"
export default class extends Controller {
  static targets = [ "transactions" , 'table']

  connect() {
    this.createChanel(this)
  }

  createChanel(instance){
    return consumer.subscriptions.create({channel: "TransactionChannel", room: 'transaction_channel'}, {
      received(data) {
        instance.tableTarget.innerHTML = data
      }
    });
  }
}
