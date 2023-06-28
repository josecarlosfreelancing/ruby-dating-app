class MailchimpWrapper
    def initialize(api_key)
        @gibbon = Gibbon::Request.new(api_key: api_key)
    end

    def send_email(list_id, subject, from_name, from_email, content)
        begin
            campaign = @gibbon.campaigns.create(
                body: {
                    type: 'plaintext',
                    recipients: {
                        list_id: list_id
                    },
                    settings: {
                        subject_line: subject,
                        from_name: from_name,
                        reply_to: from_email,
                        inline_css: true
                    }
                }
            )

            p campaign

            @gibbon.campaigns(campaign.body["id"]).content.upsert(
                body: {
                    plain_text: content
                }
            )
            
            @gibbon.campaigns(campaign.body["id"]).actions.send.create
        rescue Gibbon::MailChimpError => e
            Rails.logger.error "Error sending email: #{e.message}"
        end
    end
end