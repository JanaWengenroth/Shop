module ApplicationHelper
  
   def selected
      users = Kunde.all.map{|obj| obj.email}
      if (not params[:user_post].nil?) and users.include?(params[:user_post])
        session[:warenkorb_produkt] = nil
        selected2 = params[:user_post]
        session[:user_session] = selected2
      else
        if session[:user_session].nil?
           session[:user_session] = users[0]
        end
        selected2 = session[:user_session]
      end
      selected2
   end
   
   def get_warenkorb
      if session[:warenkorb_produkt].nil? 
       session[:warenkorb_produkt] = []
      end
      session[:warenkorb_produkt]
   end
   
   def add_to_warenkorb(id)
     id = id.to_i
      if session[:warenkorb_produkt].nil? 
       session[:warenkorb_produkt] = []
     end
     session[:warenkorb_produkt] << id
   end
   
   def delete_warenkorb(id)
      if session[:warenkorb_produkt].nil? 
       session[:warenkorb_produkt] = []
      end
      session[:warenkorb_produkt].delete_at(session[:warenkorb_produkt].index(id.to_i) || session[:warenkorb_produkt].length)
   end
end
