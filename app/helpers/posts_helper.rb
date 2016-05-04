module PostsHelper
  def post_length_in_minutes(body)
    min = body.split(" ").size / 250
    if min == 0
      'Menos de un minuto'
    else
      "#{min} minutos de lectura"
    end
  end

  def link_to_responses_to(post)
    link_to (pluralize(post.responses.count, "respuesta")), post_path(post, anchor: 'respuestas'), class: 'response-count'
  end
end