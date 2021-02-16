import { Controller } from "stimulus";

export default class extends Controller {
    static targets = ['count'];
    static values = { count: Number }

    countTarget: Element;
    countValue: number;

    up(e: MouseEvent) {
        this.countValue += 1;
        e.preventDefault();
    }

    down(e: MouseEvent) {
        this.countValue -= 1;
        e.preventDefault();
    }

    countValueChanged() {
        this.countTarget.textContent = this.countValue.toString();
    }
}
