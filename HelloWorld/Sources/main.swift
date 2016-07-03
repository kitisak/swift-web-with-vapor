import Vapor

let app = Application()

app.get("/") { request in
    return "Hello, World!"
}

app.get("json") { request in
    return JSON([
        "number": 123,
        "string": "test",
        "array": JSON([
            0, 1, 2, 3
        ]),
        "dict": JSON([
            "name": "Vapor",
            "lang": "Swift"
        ])
    ])
}

app.start()
