class SearchTypes < EnumerateIt::Base
  associate_values(
    :by_state_and_name,
    :by_state_id,
    :by_name
  )
end