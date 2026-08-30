import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener("invalid", this.handleInvalid, true)
    this.element.addEventListener("input", this.clearValidationMessage, true)
  }

  disconnect() {
    this.element.removeEventListener("invalid", this.handleInvalid, true)
    this.element.removeEventListener("input", this.clearValidationMessage, true)
  }

  handleInvalid = (event) => {
    const message = this.element.dataset.validationMessage

    if (message) {
      event.target.setCustomValidity(message)
    }
  }

  clearValidationMessage = (event) => {
    event.target.setCustomValidity("")
  }
}