// dropdown_controller.js
import {Controller} from "stimulus"
import {enter, leave} from 'el-transition';

export default class extends Controller {
    static targets = ["menu", "button"]

    declare menuTarget: HTMLInputElement;

    toggleMenu() {
      console.log("Yeah.. toggling menu")
      if(this.menuTarget.classList.contains('hidden')) {
          enter(this.menuTarget)
      } else {
          leave(this.menuTarget)
      }
    }
}
