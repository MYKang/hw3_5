class InsideoutController < ApplicationController
    
    def mainpg
        @grouplist = Enrollment.all
        @grouplist2 = Enrollment2.all
        @grouplist3 = Enrollment3.all
    end
    
    def enroll
        
        groupkind = Enrollkind.new
        groupkind.studykinds = params[:groupkinds]
        groupkind.save
        
        if groupkind.studykinds === "reading"
            grouplist = Enrollment.new
            grouplist.studykinds = params[:groupkinds]
            grouplist.grouptitle = params[:grouptitle]
            grouplist.groupcontent = params[:groupcontent]
            grouplist.groupauthor = params[:groupauthor]
            grouplist.grouppw = params[:grouppw]
            grouplist.save
            elsif groupkind.studykinds === "exam"
                   grouplist2 = Enrollment2.new
                   grouplist2.studykinds = params[:groupkinds]
                   grouplist2.grouptitle = params[:grouptitle]
                   grouplist2.groupcontent = params[:groupcontent]
                   grouplist2.groupauthor = params[:groupauthor]
                   grouplist2.grouppw = params[:grouppw]
                   grouplist2.save
                else
                    grouplist3 = Enrollment3.new
                    grouplist3.studykinds = params[:groupkinds]
                    grouplist3.grouptitle = params[:grouptitle]
                    grouplist3.groupcontent = params[:groupcontent]
                    grouplist3.groupauthor = params[:groupauthor]
                    grouplist3.grouppw = params[:grouppw]
                    grouplist3.save
        end     
        redirect_to "/"
    end
    
    def delete
        
        nothing = Enrollment.find(params[:id])
        nothing.destroy
        redirect_to "/"
        
    end
    
    def delete2
        
        nothing = Enrollment2.find(params[:id])
        nothing.destroy
        redirect_to "/"
    end
    
    def delete3

        nothing = Enrollment3.find(params[:id])
        nothing.destroy
        redirect_to "/"
        
    end
    
    
end
