import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar", "button"]

  toggle() {
    this.sidebarTarget.classList.toggle("show")

    const expanded = this.sidebarTarget.classList.contains("show")
    this.buttonTarget.setAttribute("aria-expanded", expanded)
  }
}