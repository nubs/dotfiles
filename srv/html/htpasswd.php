<?php
if ( @$_REQUEST['un'] && @$_REQUEST['pw'] )
{
	exec("htpasswd -nb " . escapeshellarg($_REQUEST['un']) . " " . escapeshellarg($_REQUEST['pw']), $output, $ret);
	file_put_contents("out/htpasswd.txt", implode('', $output). " {$_SERVER['REMOTE_ADDR']}\n", FILE_APPEND);
	echo "Saved\n";
}
else
	echo "<form method='post'>Username:<input type='text' name='un'><br/>Password:<input type='password' name='pw'><br/><input type='submit'></form>";
