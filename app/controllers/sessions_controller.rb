class SessionsController < ApplicationController
  def new
  end

  def create
    user_type = params[:typ_uzytkownika]
    if user_type == "PB"
        @employee = Employee.find_by(login: params[:username])
        if @employee && @employee.password==params[:password]
            session[:user_id] = @employee.id
            session[:user_type] = user_type
            return redirect_to '/welcome'
        end

    elsif user_type == "W"
        @volonteer = Volonteer.find_by(login: params[:username])
        if @volonteer && @volonteer.password==params[:password]
            session[:user_id] = @volonteer.id
            session[:user_type] = user_type
            return redirect_to '/welcome'
        end

    elsif user_type == "D"
        @courier = Courier.find_by(login: params[:username])
        if @courier && @courier.password==params[:password]
            session[:user_id] = @courier.id
            session[:user_type] = user_type
            return redirect_to '/welcome'
        end
    end
    return redirect_to '/login'
  end

  def create_user
  end

  def create_user_confirm
    user_type = params[:typ_uzytkownika]
        if user_type == "PB"
        @employee = Employee.find_by(login: params[:username])
        if @employee && @employee.password==params[:password]
            session[:user_id] = @employee.id
            session[:user_type] = user_type
            return redirect_to '/welcome'
        end

    elsif user_type == "W"
        @volonteer = Volonteer.find_by(login: params[:username])
        if @volonteer && @volonteer.password==params[:password]
            session[:user_id] = @volonteer.id
            session[:user_type] = user_type
            return redirect_to '/welcome'
        end

    elsif user_type == "D"
        @courier = Courier.find_by(login: params[:username])
        if @courier && @courier.password==params[:password]
            session[:user_id] = @courier.id
            session[:user_type] = user_type
            return redirect_to '/welcome'
        end
    end
    return redirect_to '/login'
  end

  def login
  end

  def welcome
  end
end