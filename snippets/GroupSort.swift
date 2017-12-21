func groupMessages(messages: [Message]) -> [[Message]] {
    let sortedMessages = messages.sorted { (a, b) in a.sentAt <= b.sentAt }
    var groupedMessages = [Int: [Message]]()
    for message in sortedMessages {
        if !groupedMessages.keys.contains(message.senderId) {
            groupedMessages[message.senderId] = [Message]()
        }
        groupedMessages[message.senderId]!.append(message)
    }
    return groupedMessages.values.sorted { (a, b) in a.last!.sentAt > b.last!.sentAt }
}
