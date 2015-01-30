<p>
  <strong>Link:</strong>
  <%= Link.href %>
</p>

<p>
  <strong>Add Link:</strong>
  <%= link.body %>
</p>

<p>
  <%= link_to 'Destroy Comment', [link.article, link],
               method: :delete,
               data: { confirm: 'Are you sure?' } %>
</p>
