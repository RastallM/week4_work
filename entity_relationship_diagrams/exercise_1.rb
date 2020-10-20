## Exercise 1

Diagram the following:

Slack has many organisations. Each organisation has many Slack channels. Each organisation has one owner.

class Slack
    def initialize(organisations=[])
        @organisations = organisations
    end
    
    def add_organisation(organisation)
        @organisations << organisation
    end
    
    
    attr_reader :organisations
end

class Organisation
    def initialize(name)
        @name = name
        @slack_channels = []
    end
    
    def add_slack_channel(slack_channel)
        @slack_channels << slack_channel
    end
    
    attr_reader :name, :slack_channels
end
    
class SlackChannel
    def initialize(name)
        @name = name
    end
    
    attr_reader :name
end

team_1_slack = SlackChannel.new(team1)
team_2_slack = SlackChannel.new(team2)

org_1 = Organisation.new(org1)
org_1.add_slack_channel(team_1_slack)
org_1.add_slack_channel(team_2_slack)

team_3_slack = SlackChannel.new(team3)
team_4_slack = SlackChannel.new(team4)

org_2 = Organisation.new(org2)
org_2.add_slack_channel(team_3_slack)
org_2.add_slack_channel(team_4_slack)

organisations = [org_1, org_2]

slack = Slack.new(organisations)
