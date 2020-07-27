##Const
NAMES = %w(Иван Петр Вадим Валентин Глеб Кирилл Владимир Артем Артур Илья Сергей Семен Виктор Константин Александр Анатолий Олег Денис Леонид)
SURNAMES = %w(Иванов Смирнов Кузнецов Попов Васильев Петров Соколов Михайлов Новиков Фёдоров Морозов Волков Алексеев Лебедев Семенов Егоров Павлов Козлов Степанов Николаев Орлов Андреев Макаров Никитин Захаров)
WEB_COURSE_NAMES = %w(C C++ R Ruby Go Haskell Python Cristal Lisp)

100.times do |time|
  Student.create(name: NAMES[rand(NAMES.size)], surname: SURNAMES[rand(SURNAMES.size)], email: "example#{rand(1000)}@example.com")
end

WEB_COURSE_NAMES.each do |course|
  WebCourse.create(
    name: "Программирование на #{course}",
    description: "Качественно обучаем программированию на #{course}",
    days_duration: rand(30)
  )
  
  2.times do |count_group| 
    Group.create(name: "Группа №#{count_group + 1} #{course}", web_course_id: WebCourse.last.id, start_time: (Time.now + rand(150).days))
    5.times do |count_student|
      student = Student.all[rand(Student.all.size)]
      Group.last.students << student
      WebCourse.last.students << student
    end
  end
end
