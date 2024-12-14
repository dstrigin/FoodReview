// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "./application"
import { eagerLoadControllersFrom } from "../libs/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
