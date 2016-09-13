ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }


  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Infos générales" do
          ul do
            li "Nombre de bars: #{Bar.count}"
          end
        end
      end
    end

    columns do
      column do
        div id: "dashboard_map"
      end
    end
  end

end
