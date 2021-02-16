import { Controller } from "stimulus";

export default class extends Controller {
    static targets = ['count'];
    static values = { count: Number }

    declare countTarget: HTMLInputElement;
    declare countValue: number;

    up() {
        this.countValue += 1;
    }

    down() {
        this.countValue -= 1;
    }

    countValueChanged() {
        this.countTarget.value = this.countValue.toString();
    }
}
