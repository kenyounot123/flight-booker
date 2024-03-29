import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ["passengerForm", "newPassengerFormContainer", "destroyFlag", "destroyButton"]

  /* Get time in milliseconds and replace child_index with that time
  This allows for a unique index for each dynamically added nested form */
  addPassengerField() {
    // Initializes a new Date object and get the time in milliseconds.
    const date_time_index = new Date().getTime()
    // Creates a copy of the template's content along with all its child nodes.
    // this returns a DocumentFragment object.
    const formClone = this.passengerFormTarget.content.cloneNode(true)
    // This selects the form element of the cloned DocumentFragment object 
    const clonedContent = formClone.querySelector('div')
    // Replaces the cloned content's innerHTML instead of the template one so that we can reuse the template
    const modifiedContent = clonedContent.innerHTML.replace(/NEW_RECORD/g, date_time_index)
    // Update the cloned content's innerHTML with the modified content.
    clonedContent.innerHTML = modifiedContent
    // formClone is now updated and ready to be appended to our target
    this.newPassengerFormContainerTarget.appendChild(formClone)
  }

  // deletes only the most bottom form and delete button instead of the form with the associated delete button
  deletePassengerField() {
    const passengerFieldArray = this.destroyFlagTargets
    const destroyButtonArray = this.destroyButtonTargets
    const lastDestroyButton = destroyButtonArray.length - 1
    const lastPassengerField = passengerFieldArray.length - 1


    this.destroyFlagTargets[lastPassengerField].value = true
    this.destroyFlagTargets.forEach(element => {
      if (element.value === "true") {
        element.closest(".passenger-field").remove()
        destroyButtonArray[lastDestroyButton].remove()
      }
    });
  }
}