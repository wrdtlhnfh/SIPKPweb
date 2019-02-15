<form action="{{ route('profile.picture')}}" enctype="multipart/form-data" method="POST" style="display:none">
    @csrf
    @method('patch')
    <input type="file" id="profile-pict" name="photo" onchange="this.form.submit();"/>
</form>

<div class="col-md-4">
    <div class="card">
        <div class="card-header">
            Photo
            <div class="card-header-actions">
                <a href="#" onclick="event.preventDefault();openImageUploadDialog();" class="card-header-action btn-setting">
                    <i class="icon-camera"></i>
                </a>
            </div>
        </div>
        <div class="card-body" id="collapseExample">
            <div class="text-center">
            <img src="{{ route('get.image', ['profile-pict', Auth::user()->avatar]) }}" class="img-fluid img-thumbnail" />
            </div>
        </div>
    </div>
</div>

@push('javascript')
<script>

function openImageUploadDialog(){
    $("#profile-pict").trigger("click");
}

</script>
@endpush