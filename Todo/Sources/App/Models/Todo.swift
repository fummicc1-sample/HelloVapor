import Fluent
import Vapor

final class Todo: Model, Content {

    static let schema = "todos"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String

    @Field(key: "memo")
    var memo: String

    @Field(key: "deadline")
    var deadline: Date

    init() {
    }

    init(id: UUID? = nil, title: String, memo: String, deadline: Date) {
        self.id = id
        self.title = title
        self.memo = memo
        self.deadline = deadline
    }
}
