export function eagerLoadControllersFrom(context, application) {
    for (const [identifier, controller] of Object.entries(context)) {
        application.register(identifier, controller.default || controller);
    }
}
