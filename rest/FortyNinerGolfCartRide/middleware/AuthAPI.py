from django.conf import settings
from django.http import JsonResponse
from rest_framework.authtoken.models import Token


class APITokenAuthMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def is_token_valid(self):
        if self.request.META.get('HTTP_TOKEN'):
            auth_token = self.request.META['HTTP_TOKEN']
            try:
                token = Token.objects.get(key=auth_token)
            except Token.DoesNotExist:
                return False
            return token.user if token else False
        return False

    def __call__(self, request):
        if settings.AUTH_ENABLED and request.path.startswith("/api/"):
            self.request = request
            user = self.is_token_valid()
            if user:
                request.user = user
            else:
                response = JsonResponse({
                    'status': 'UNTRUSTED REQUEST',
                    'response': 'LOGIN_REQUIRED'
                })
                response.status_code = 403
                return response

        response = self.get_response(request)

        return response
