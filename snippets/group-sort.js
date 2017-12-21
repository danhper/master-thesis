function groupMessages(messages) {
  const sortedMessages = messages.sort((a, b) => a.sentAt - b.sentAt);
  const grouped = {};
  for (const message of sortedMessages) {
    if (!grouped[message.senderId]) {
      grouped[message.senderId] = [];
    }
    grouped[message.senderId].push(message);
  }
  const groups = [];
  for (const key in grouped) {
    groups.push(grouped[key]);
  }
  return groups.sort((a, b) => b[b.length - 1].sentAt - a[a.length - 1].sentAt);
}
