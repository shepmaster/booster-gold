import { Controller } from "stimulus";

export default class extends Controller {
    static targets = ['count'];
    static values = { count: Number }

    up(e) {
        this.countValue += 1;
        e.preventDefault();
    }

    down(e) {
        this.countValue -= 1;
        e.preventDefault();
    }

    countValueChanged() {
        this.countTarget.textContent = this.countValue;
    }
}
