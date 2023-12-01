import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ["passengerForm", "newPassengerFormContainer"]

  /* Get time in milliseconds and replace child_index with that time
  This allows for a unique index for each dynamically added nested form */
  addPassengerField() {
    const date_time_index = new Date().getTime()
    const uniqueChildIndex = date_time_index
    var content = this.passengerFormTarget.innerHTML.replace(/NEW_RECORD/g, uniqueChildIndex)
    const formClone = content.cloneNode(true)
    this.newPassengerFormContainerTarget.appendChild(formClone)
  }

  deletePassengerField() {

  }
}