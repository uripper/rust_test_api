//test
use actix_web::{get, post, web, HttpResponse, Responder, App, HttpServer};
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
struct Request {
    name: String,
    age: u8,
}

#[post("/api")]
async fn api(_request: web::Json<Request>) -> impl Responder {
    HttpResponse::Ok().body(format!("Beepo weepo!"))
}

#[get("/")]
async fn index() -> impl Responder {
    HttpResponse::Ok().body("Hello, world!")
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .service(api)
            .service(index)
    })
    .bind("https://rusttestapi-production.up.railway.app/")?
    .run()
    .await
}