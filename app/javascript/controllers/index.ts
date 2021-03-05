// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";
import StimulusReflex from 'stimulus_reflex'
import consumer from '../channels/consumer'
import controller from '../controllers/application_controller'
import { Dropdown, Toggle } from "tailwindcss-stimulus-components"

const application = Application.start();
const context = require.context("controllers", true, /_controller\.[jt]s$/);
application.load(definitionsFromContext(context));

// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

application.register('dropdown', Dropdown);
application.register('toggle', Toggle);

StimulusReflex.initialize(application, { consumer, controller, isolate: true })
StimulusReflex.debug = process.env.RAILS_ENV === 'development'
