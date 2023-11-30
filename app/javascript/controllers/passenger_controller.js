import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ["passengerForm", "newPassengerContainer"]

  addPassenger() {
    const formClone = this.passengerFormTarget.content.cloneNode(true)
    this.newPassengerContainerTarget.appendChild(formClone)
  }
}