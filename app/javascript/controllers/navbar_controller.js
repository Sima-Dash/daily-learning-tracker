import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "button"]

  toggle() {
    this.menuTarget.classList.toggle("show")

    const expanded = this.menuTarget.classList.contains("show")
    this.buttonTarget.setAttribute("aria-expanded", expanded)
  }
}