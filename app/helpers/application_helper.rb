module ApplicationHelper
	def formata_data(data)
		data.strftime("%Y-%m-%d")
	end

	def comentarios(comentavel)
		comentarios = "<div id='comentarios'>"
		if comentavel.comentarios.any?
			comentarios << render(:partial => "comentarios/comentario", :collection => comentavel.comentarios)
		end
		comentarios << "</div>"

		raw comentarios
	end

	def novo_comentario(comentavel)
		comentarios = render(:partial => "comentarios/novo_comentario", :locals => { :comentavel => comentavel })
		raw comentarios
	end

end
