import datetime
from django.http import JsonResponse
from django.views.decorators.http import require_http_methods
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token


@require_http_methods(["POST"])
def create_user_token(request, **kwargs):
    username = request.POST.get('username')
    password = request.POST.get('password')
    try:
        user = User.objects.get(username=username)
    except User.DoesNotExist:
        return JsonResponse({
            'message': 'INVALID CREDENTIALS',
            'token': 'no-token-for-you'
        })

    if user:
        is_password_valid = user.check_password(password)
        if is_password_valid:
            token = Token.objects.get_or_create(user=user)
            valid_until = token[0].created + datetime.timedelta(days=10)

            return JsonResponse({
                'token': token[0].key,
                "valid_until": valid_until
            })

    return JsonResponse({
        'message': 'INVALID CREDENTIALS',
        'token': 'no-token-for-you'
    })
