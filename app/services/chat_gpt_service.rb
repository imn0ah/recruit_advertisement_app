class ChatGptService
    def self.generate(job_posting)
        prompt = build_prompt(job_posting)

        #APIを呼び出す
        #client = OpenAI::Client.new

        #response = client.chat(
            #parameters: {
                #model: "gpt-5",
                #messages:[
                    #{
                        #role: "user",
                        #content: prompt
                    #}
                #]
            #}
        #)

        #chatgpt apiで作成した文章を取り出す
        #generated_text = response.dig(
            #"choices",
            #0,
            #"message",
            #"content"
        #)

        generated_text = <<~TEXT
        【テスト用求人】
        TEXT

        generated_text
    end


    #chatgpt apiに渡すプロンプト作成
    def self.build_prompt(job_posting)
        prompt = <<~TEXT
          以下の求人情報から求人広告を作ってください。

          会社名
          #{job_posting.company_name}

          求人名
          #{job_posting.title}

          応募条件
          #{job_posting.requirements}

          求人詳細
          #{job_posting.description}

          給与
          #{job_posting.salary}

          勤務地
          #{job_posting.location}
        TEXT
    end
end

