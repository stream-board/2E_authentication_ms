class WsusersController < ApplicationController
    soap_service namespace: 'urn:WashOutUser', camelize_wsdl: :lower

    # check case
    soap_action "getUser",
                :args => { :userId => :integer},
                :return => { :userValid => :boolean, 
                    :name => :string, 
                    :nickname => :string, 
                    :image => :string, 
                    :email => :string}
    def getUser
        if (User.exists?(id: params[:userId]))
            @user = User.find(params[:userId])
            render :soap => { :userValid => true, 
                :name => @user.name,
                :nickname => @user.nickname,
                :image => @user.image,
                :email => @user.email}
        else
            render :soap => { :userValid => false}
        end
    end
end