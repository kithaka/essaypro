class Order < ActiveRecord::Base
  attr_accessible :citation, :documenttype, :instructions, :language, :level, :pages, :references, :subject, :topic, :deadline, :price, :spacing, :urgency
  belongs_to :customer
  has_many :payment_notifications
  has_many :uploadfiles
  has_many :messages
  has_many :states
  validates :citation, :documenttype, :instructions, :language, :level, :pages, :references, :subject, :topic, :deadline, :spacing, :presence=>true
  default_scope :order=>'orders.created_at DESC'
Subject_Type = ["Art", "Architecture", "Dance", "Design Analysis", "Drama", "Movies", "Music", "Paintings", "Theatre", "Biology", 
                  "Business", "Chemistry", "Communications and Media", "Advertising", "Communication Strategies", "Journalism", 
                  "Public Relations", "Creative writing", "Economics", "Accounting", "Case Study", "Company Analysis", 
                  "E-Commerce", "Finance", "Investment", "Logistics", "Trade", "Education", "Application Essay",  
                  "Education Theories", "Engineering", "Ethics", "History", "Law", "Criminology", "Linguistics", "Literature", 
                  "Management", "Marketing", "Mathematics", "Healthcare", "Nursing", "Nutrition", "Pharmacology", "Sport", 
                  "Nature", "Agricultural Studies", "Anthropology", "Astronomy", "Environmental Issues", "Geography", 
                  "Geology", "Philosophy", "Physics", "Political Science", "Psychology", "Religion and Theology", "Sociology", 
                  "Technology", "Aviation", "Computer Science", "Web Design", "Tourism"]
  Document_Type=["Essay", "Term Paper", "Research Paper", "Coursework", "Book Report", "Book Review", "Movie Review", "Dissertation",
 "Thesis", "Thesis Proposal", "Research Proposal", "Formatting", "Admission Essay", "Scholarship Essay", 
 "Personal Statement", "Editing", "Proofreading", "Case Study", "Lab Report", "Math Problem", "Article", 
 "Article Critique", "Annotated Bibliography", "Reaction Paper", "PowerPoint Presentation", 
 "Statistics Project", "Multiple Choice Questions", "Other"]
 Academic_Level=["High School", "Undergraduate", "Master", "Ph.D."]
 Citation_Style=["APA", "MLA", "Turabian", "Chicago", "Harvard", "Oxford", "Vancouver", "CBE", "Other"]
 Preffered_Language=["English (U.S.)", "English (U.K.)"]
 #Urgency=["8 hours", "12 hours", "24 hours", "48 hours", "3 days", "5 days", "7 days", "10 days", "15 days", "25 days"]
 Spacing=["Single", "Double"]
 


 def paypal_url(return_url, notify_url)
  values={

    :business=>"ptztom@gmail.com",
    :cmd=>"_cart", #had used a cart without underscore
    :upload=>1,
    :return =>return_url,
    :invoice=>id,
    :notify_url=>notify_url
  }
  values.merge!({
    #amount is in cents
    "amount_1"=>price,
    "item_name_1"=>"custom_paper",
    "item_number_1"=>1,
    "quantity_1"=>1

    })
  #for test transactions we use the URL below
  "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
end

end