def current_user 
  User.find(session[:user_id].to_i)
end

def user_logged_in?
  if session[:user_id] == nil
    return false
  else  
    return true
  end
end