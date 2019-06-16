class UsersProjectsController < ApplicationController
	def destroy
	user = User.find(params[:user_id])
	project = Project.find(params[:id])
	
	#Delete project to user
	user.projects.delete(project)
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
	end
	def destroy2
    #Delete user to project
	project.users.delete(user)
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

end
