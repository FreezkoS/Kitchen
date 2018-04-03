class ZamsMailer < ActionMailer::Base
    default from: "freezkos@yandex.ru", 
            template_path: 'mailers/zams'
    
    def zayavka(clue)
        @clue = clue 
        mail to: "freezkos@yandex.ru",
        subject: "Новый заказ!"
    end
    
    def sending(clue)
        @clue = clue
        mail to: "freezkos@yandex.ru",
        subject: "Оформление подписки!"
    end
end