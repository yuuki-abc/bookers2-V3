
[1mFrom:[0m /home/ec2-user/environment/bookers2-V3/app/views/users/follows.html.erb:15 ActionView::CompiledTemplates#_app_views_users_follows_html_erb__2180344262258756030_27433960:

    [1;34m10[0m: 
    [1;34m11[0m:     <div class='col-md-8 offset-md-1'>
    [1;34m12[0m:       <h2>follows</h2>
    [1;34m13[0m:       <!--ここから-->
    [1;34m14[0m:       <% binding.pry %>
 => [1;34m15[0m:       a == '222'
    [1;34m16[0m:       users = @user.follower
    [1;34m17[0m:         <% users.each do |user| %>
    [1;34m18[0m:           user.name
    [1;34m19[0m:         <% end %>
    [1;34m20[0m:       <!--ここまで-->

