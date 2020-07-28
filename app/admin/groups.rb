ActiveAdmin.register Group do
    permit_params :name, :start_time, :web_course_id, :active

    menu label: 'Группы'
  
    filter :id
    filter :name
    filter :start_time
  
    index do
      column :id
      column :name
      column :start_time
      column :web_course_id
      column :active
 
      actions
    end

    show do |group|
      attributes_table do
        row(:id)
        row(:name)
        row(:start_time)
        row(:active)
        row(:web_course) { group.web_course.name if group.web_course.present? }
        row(:students) { group.students.pluck(:email).join(', ') if group.students.present? }
      end
    end
  
    form do |f|
      f.inputs do
        f.input :name, label: 'Наазвание',    input_html: { maxlength: 255 }
        f.input :start_time, as: :datepicker
        f.input :web_course_id, as: :select, collection: WebCourse.order(name: :asc).pluck(:name, :id)
        f.input :active, label: 'Активно'
      end
      f.actions
    end
  end
  