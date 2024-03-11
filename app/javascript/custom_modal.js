document.addEventListener("DOMContentLoaded", function() {
    var deleteLinks = document.querySelectorAll('a[data-confirm]');
  
    deleteLinks.forEach(function(link) {
      link.addEventListener('click', function(e) {
        e.preventDefault();
        var target = e.target.href; // 削除リンクのURLを取得
        $('#confirmModal').modal('show'); // モーダルを表示
  
        document.getElementById('confirmDelete').addEventListener('click', function() {
          $.ajax({
            url: target,
            method: 'DELETE',
            success: function(result) {
              // 削除が成功したらページをリロードするか、DOMを更新します。
              location.reload();
            }
          });
        });
      });
    });
  });
  