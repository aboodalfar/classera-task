<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class UserCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $grouped = $this->groupBy('role');

        return [
            'admin' => $grouped->get('admin') ? UserResource::collection($grouped->get('admin')) :[],
            'user' => $grouped->get('user') ? UserResource::collection($grouped->get('user')) :[]
        ];
    }
}
