require 'template'

describe TemplateMaker do
    context "I can make a new TemplateMaker instance and it doesn't break" do
        it "When using TemplateMaker.new I don't crash" do
            expect { TemplateMaker.new }.to_not raise_error
        end
    end

    #=> If the template is "The [animal] jumped over the [planetary body]"
    #=> The result of this function should be ["animal", "planetary body"]

    context "Template Words" do
        it "When the template is 'The [animal] jumped over the [planetary body]' it returns  ['animal', 'planetary body']" do
            tm = TemplateMaker.new
            tm.add_template("The [animal] jumped over the [planetary body]")
            result = tm.get_words
            expect(result).to eql(["animal", "planetary body"])
        end

        it "When the template is 'This is [color]' it returns ['color']" do
            tm = TemplateMaker.new
            tm.add_template "This is [color]"
            result = tm.get_words
            expect(result).to eql(["color"])
        end
    end
end
