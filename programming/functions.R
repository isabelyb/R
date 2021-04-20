df <- tibble::tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)

df

# Generalmente, los nombres de las funciones deberían ser verbos y los argumentos sustantivos


# Comentario encabezado ---------------------------------------------------

tiene_nombre <- function(x) {
  nms <- names(x)
  if (is.null(nms)){
    rep(FALSE, length(x))
  } else {
    !is.na(nms) & nms != ""
  }
}

