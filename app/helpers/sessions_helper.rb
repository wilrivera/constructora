module SessionsHelper
    def log_in(usuario)
        session[:usuario_id] = usuario.id
        session[:usuario_email] = usuario.email
        session[:usuario_nombres] = usuario.nombres
        session[:usuario_apellidos] = usuario.apellidos
        session[:usuario_perfil] = usuario.perfil

        puts 'El perfil es'
        puts session[:usuario_perfil]

    end

    def current_user
        @current_user ||= Usuario.find_by(id:  session[:usuario_id])
    end

    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:usuario_id)
        session.delete(:usuario_email)
        session.delete(:usuario_nombres)
        session.delete(:usuario_apellidos)
        session.delete(:usuario_perfil)
        @current_user = nil
    end

end