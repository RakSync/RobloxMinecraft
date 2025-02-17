<?php
namespace RakSync\RobloxMinecraft;
final class Serialization { 
public function serializeData($data) {
    return json_encode($data);
}

public function deserializeData($data) {
    return json_decode($data, true);
}
}
?>
