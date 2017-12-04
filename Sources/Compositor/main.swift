let loader = Loader()

do {
    try loader.run()
} catch {
    print("Whoops! An error occurred: \(error)")
}
