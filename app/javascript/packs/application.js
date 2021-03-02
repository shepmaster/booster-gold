// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import "@hotwired/turbo-rails";
import * as ActiveStorage from "@rails/activestorage";
import * as Turbo from "@hotwired/turbo";

import "channels";
import "controllers";

Rails.start();
ActiveStorage.start();

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);

import "controllers"

// Styles
// These are imported separately for faster Webpack recompilation
// https://rubyyagi.com/solve-slow-webpack-compilation/
import "stylesheets/base.scss"
//import "stylesheets/components.scss"
import "stylesheets/utilities.scss"
