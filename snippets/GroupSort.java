public static List<List<Message>> groupMessages(List<Message> messages) {
  Collections.sort(messages, (m1, m2) -> m1.getSentAt() - m2.getSentAt());
  HashMap<Integer, List<Message>> grouped = new HashMap<>();
  for (Message m: messages) {
    if (!grouped.containsKey(m.getSenderId())) {
      grouped.put(m.getSenderId(), new ArrayList<Message>());
    }
    grouped.get(m.getSenderId()).add(m);
  }
  List<List<Message>> result = new ArrayList<>(grouped.values());
  Collections.sort(result, (m1, m2) -> m2.get(m2.size() - 1).getSentAt() -
                                       m1.get(m1.size() - 1).getSentAt());
  return result;
}
