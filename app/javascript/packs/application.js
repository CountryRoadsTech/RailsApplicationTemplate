// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start() // Enables direct upload of attachments from the user's browser to the server.

import "controllers"

// Import all application CSS and SCSS.
import "../stylesheets/application.scss"

// Adds a preview indication as directly uploaded files are being uploaded.
import "../source/direct_upload.js"

// Import Rich Text Editor's Javascript.
require("trix")
require("@rails/actiontext")

