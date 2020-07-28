ActiveAdmin.register Student do
    permit_params :name, :surname, :email

    menu label: 'Студенты'
  
    filter :id
    filter :name
    filter :surname
    filter :email
  
    index do
      column :id
      column :name
      column :surname
      column :email
 
      actions
    end

    show do |student|
      attributes_table do
        row(:id)
        row(:name)
        row(:surname)
        row(:email)
        row(:groups) { student.groups.pluck(:name).join(', ') if student.groups.present? }
      end
    end
  
    form do |f|
      f.inputs do
        f.input :name, label: 'Имя', input_html: { maxlength: 30 }
        f.input :surname, label: 'Фамилия', input_html: { maxlength: 50 }
        f.input :email, label: 'Email', input_html: { maxlength: 50 }
      end
      f.actions
    end
  end
  