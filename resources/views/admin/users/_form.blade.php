<div class="form-group">
    <label for="email">Email</label>
    {{ Form::text('email', null, ['class' => 'form-control'])}}
</div>

<div class="form-group">
    <label for="username">Username</label>
    {{ Form::text('username', null, ['class' => 'form-control'])}}
</div>

<div class="form-group">
    <label for="password">Password</label>
    {{ Form::input('password', 'password', null, ['class' => 'form-control'])}}
</div>

<div class="form-group">
    <label for="role">Role</label>
    {{ Form::select('role',$roles, $user_roles, ['class' => 'form-control'])}}
</div>

<div class="form-group">
    <label for="password">Password</label>
    {{ Form::file('avatar', ['class' => 'form-control']) }}
</div>
