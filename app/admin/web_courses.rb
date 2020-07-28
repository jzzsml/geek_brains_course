ActiveAdmin.register WebCourse do
    permit_params :name, :description, :days_duration

    menu label: 'Курсы'
  
    filter :id
    filter :name
    filter :days_duration
  
    index do
      column :id
      column :name
      column :description
      column :days_duration
 
      actions
    end

    show do |web_course|
      attributes_table do
        row(:id)
        row(:name)
        row(:description)
        row(:days_duration)
        row(:groups) { web_course.groups.pluck(:name).join(', ') if web_course.groups.present? }
      end
    end
  
    form do |f|
      f.inputs do
        f.input :name, label: 'Наазвание курса',    input_html: { maxlength: 255 }
        f.input :description, label: 'Описание курса',    input_html: { maxlength: 255 }
        f.input :days_duration, label: 'Продолжительность'
      end
      f.actions
    end
  end