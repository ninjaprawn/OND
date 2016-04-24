// https://github.com/Quick/Quick

import Quick
import Nimble
import OND

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("addition") {
			var number: Int?
			beforeEach {
				number = 1
			}
			
            it("has changed in value (PREFIX)") {
				+++number!
                expect(number!).to(equal(2))
            }
			
			it ("had changed in value (PREFIX, ASSIGNMENT)") {
				let test = +++number!
				expect(test).to(equal(2))
			}
			
			it("has changed in value (POSTFIX)") {
				number!+++
				expect(number!).to(equal(2))
			}
			
			it ("had changed in value (POSTFIX, ASSIGNMENT)") {
				let test = number!+++
				expect(test).to(equal(1))
			}
        }
		
		describe("subtraction") {
			var number: Int?
			beforeEach {
				number = 2
			}
			
			it("has changed in value (PREFIX)") {
				---number!
				expect(number!).to(equal(1))
			}
			
			it ("had changed in value (PREFIX, ASSIGNMENT)") {
				let test = ---number!
				expect(test).to(equal(1))
			}
			
			it("has changed in value (POSTFIX)") {
				number!---
				expect(number!).to(equal(1))
			}
			
			it ("had changed in value (POSTFIX, ASSIGNMENT)") {
				let test = number!---
				expect(test).to(equal(2))
			}
		}
    }
}
